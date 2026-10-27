`timescale 1ns / 1ps

module a05_tb;

    // -----------------------------------------------------------------
    // Tin hieu kich thich va quan sat
    // -----------------------------------------------------------------
    logic [3:0] a, b;
    logic [7:0] p_dut;    // tu DUT   - mang 16 AND + 3 hang bo cong
    logic [7:0] p_ref;    // tu REF   - toan tu nhan cua ngon ngu

    // -----------------------------------------------------------------
    // Bo dem - khai bao HET o day, khong khai bao giua than `initial`
    // -----------------------------------------------------------------
    integer n_run;        // so vector da chay
    integer n_mismatch;   // so lan DUT lech REF
    integer n_inv;        // so lan vi pham bat bien
    integer n_named;      // so ca co ten da chay
    integer ia, ib;       // bien lap cua vong quet vet can
    integer pp_sum;       // tong co trong so cua 16 tich rieng phan
    integer i, j;         // bien lap phu cho INV-6

    // -----------------------------------------------------------------
    // DUT - ten instance BAT BUOC la `dut`
    // -----------------------------------------------------------------
    A05_array_mult4x4 dut (
        .a (a),
        .b (b),
        .p (p_dut)
    );

    // -----------------------------------------------------------------
    // Mo hinh chuan. Ten instance la `ref_i` chu KHONG phai `ref`:
    // `ref` la tu khoa SystemVerilog (doi so truyen tham chieu) nen
    // Icarus tu choi bien dich. Bai hoc nay den tu ban goc cua ho so -
    // xem 08_ORIGINAL_SOURCE/PATCHLOG.md.
    // -----------------------------------------------------------------
    A05_ref ref_i (
        .a (a),
        .b (b),
        .p (p_ref)
    );

    // =================================================================
    // KIEM MOT VECTOR
    // -----------------------------------------------------------------
    // `verbose` = 1 cho ca co ten (in mot dong), = 0 cho quet vet can.
    // =================================================================
    task automatic check_vector(input string tc, input logic [3:0] va,
                                input logic [3:0] vb, input int unsigned want,
                                input bit verbose);
        begin
            a = va;
            b = vb;
            #1;                       // cho logic to hop on dinh

            n_run = n_run + 1;

            // ---- So khop chinh: DUT vs mo hinh chuan -----------------
            if (p_dut !== p_ref) begin
                n_mismatch = n_mismatch + 1;
                $display("ERROR %s: a=%0d b=%0d | DUT=%0d (0x%02h) REF=%0d (0x%02h)",
                         tc, va, vb, p_dut, p_dut, p_ref, p_ref);
                $fatal(1, "A05 MISMATCH tai %s: a=%0d b=%0d DUT=%0d REF=%0d",
                       tc, va, vb, p_dut, p_ref);
            end

            // ---- So voi gia tri mong doi viet tay trong ca co ten ----
            if (verbose && (p_dut !== want[7:0])) begin
                n_mismatch = n_mismatch + 1;
                $fatal(1, "A05 SAI GIA TRI MONG DOI tai %s: a=%0d b=%0d DUT=%0d mong doi=%0d",
                       tc, va, vb, p_dut, want);
            end

            // ---- Khong duoc co bit X / Z o dau ra --------------------
            if (^p_dut === 1'bx) begin
                n_inv = n_inv + 1;
                $fatal(1, "A05 DAU RA CO X/Z tai %s: a=%0d b=%0d p=%b",
                       tc, va, vb, p_dut);
            end

            // ---- INV-2: tich khong bao gio vuot 225 ------------------
            if (p_dut > 8'd225) begin
                n_inv = n_inv + 1;
                $fatal(1, "A05 VI PHAM INV-2 tai %s: a=%0d b=%0d p=%0d > 225",
                       tc, va, vb, p_dut);
            end

            // ---- INV-4: a==0 | b==0 => p==0 ; b==1 => p==a -----------
            if (((va == 4'd0) || (vb == 4'd0)) && (p_dut !== 8'd0)) begin
                n_inv = n_inv + 1;
                $fatal(1, "A05 VI PHAM INV-4 tai %s: a=%0d b=%0d p=%0d, phai bang 0",
                       tc, va, vb, p_dut);
            end
            if ((vb == 4'd1) && (p_dut !== {4'b0000, va})) begin
                n_inv = n_inv + 1;
                $fatal(1, "A05 VI PHAM INV-4 tai %s: b==1 nhung p=%0d != a=%0d",
                       tc, p_dut, va);
            end

            // ---- INV-5: p[0] la MOT cong AND thuan, khong qua bo cong -
            if (p_dut[0] !== (va[0] & vb[0])) begin
                n_inv = n_inv + 1;
                $fatal(1, "A05 VI PHAM INV-5 tai %s: a=%0d b=%0d p[0]=%b, a[0]&b[0]=%b",
                       tc, va, vb, p_dut[0], (va[0] & vb[0]));
            end

            // ---- INV-6: BAT BIEN CAU TRUC ----------------------------
            // Tong co trong so cua 16 tich rieng phan phai bang tich.
            // Day la menh de bien minh cho kien truc mang cua RTL.
            pp_sum = 0;
            for (i = 0; i < 4; i = i + 1) begin
                for (j = 0; j < 4; j = j + 1) begin
                    pp_sum = pp_sum + ((va[j] & vb[i]) << (i + j));
                end
            end
            if (pp_sum !== {24'd0, p_dut}) begin
                n_inv = n_inv + 1;
                $fatal(1, "A05 VI PHAM INV-6 tai %s: a=%0d b=%0d tong pp=%0d p=%0d",
                       tc, va, vb, pp_sum, p_dut);
            end

            if (verbose) begin
                n_named = n_named + 1;
                $display("  %-8s a=%2d b=%2d -> p=%3d (0x%02h)  REF=%3d  PASS",
                         tc, va, vb, p_dut, p_dut, p_ref);
            end
        end
    endtask

    // =================================================================
    // CHUONG TRINH CHINH
    // =================================================================
    initial begin
        // --- Khoi tao: moi khai bao da nam o tren, day chi con lenh ---
        n_run      = 0;
        n_mismatch = 0;
        n_inv      = 0;
        n_named    = 0;
        a          = 4'd0;
        b          = 4'd0;

        $dumpfile("a05_waves.vcd");
        $dumpvars(0, a05_tb);

        $display("======================================================");
        $display("A05 - Bo nhan mang 4x4 khong dau - TESTBENCH TU KIEM");
        $display("======================================================");

        // -------------------------------------------------------------
        // PHA 1 - 5 ca bat buoc cua Charter muc 8
        // -------------------------------------------------------------
        $display("\n[PHA 1] 5 ca bat buoc cua Charter muc 8");
        check_vector("TC-001",  4'd0,  4'd0,   0, 1);  // 0x0   - mang nghi
        check_vector("TC-002", 4'd15, 4'd15, 225, 1);  // 15x15 - ca 16 pp = 1
        check_vector("TC-003",  4'd1, 4'd15,  15, 1);  // 1x15  - phan tu don vi
        check_vector("TC-004",  4'd8,  4'd8,  64, 1);  // 8x8   - dung 1 pp = 1
        check_vector("TC-005",  4'd7,  4'd9,  63, 1);  // 7x9   - khong sinh carry

        // -------------------------------------------------------------
        // PHA 2 - 7 ca tu xay dung, trong do co ca bien va ca toi han
        // -------------------------------------------------------------
        $display("\n[PHA 2] 7 ca tu xay dung (Charter doi >= 2, co ca bien)");
        check_vector("TC-006", 4'd15,  4'd1,  15, 1);  // CA BIEN: hoan vi TC-003
        check_vector("TC-007", 4'd14, 4'd15, 210, 1);  // CA BIEN: can tren
        check_vector("TC-008",  4'd8,  4'd2,  16, 1);  // dich thuan, INV-7
        check_vector("TC-009",  4'd5, 4'd10,  50, 1);  // mau bit xen ke
        check_vector("TC-010",  4'd3,  4'd5,  15, 1);  // tich nho, nua cao = 0
        check_vector("TC-011", 4'd15, 4'd13, 195, 1);  // CA TOI HAN thoi gian
        check_vector("TC-012", 4'd11, 4'd15, 165, 1);  // CA TOI HAN thoi gian

        // -------------------------------------------------------------
        // PHA 3 - QUET VET CAN 16 x 16 = 256 to hop
        // -------------------------------------------------------------
        // Tat ghi song TRUOC vong nay: 256 vector khong ai xem tung cai,
        // ma ghi het thi file VCD phinh to vo ich.
        $dumpoff;

        $display("\n[PHA 3] Quet vet can toan bo khong gian dau vao (16 x 16 = 256)");
        for (ia = 0; ia < 16; ia = ia + 1) begin
            for (ib = 0; ib < 16; ib = ib + 1) begin
                check_vector("EXH", ia[3:0], ib[3:0], 0, 0);
            end
        end
        $display("  Quet vet can: 256/256 to hop khop mo hinh chuan.");

        $dumpon;

        // -------------------------------------------------------------
        // TONG KET
        // -------------------------------------------------------------
        $display("\n======================================================");
        $display("TONG KET: chay=%0d  ca co ten=%0d  lech REF=%0d  vi pham bat bien=%0d",
                 n_run, n_named, n_mismatch, n_inv);

        if ((n_mismatch == 0) && (n_inv == 0) && (n_run == 268)) begin
            $display("A05 exhaustive validation PASS - DUT khop REF tren toan bo khong gian dau vao.");
        end else begin
            $display("A05 exhaustive validation FAIL");
            $fatal(1, "A05 FAIL: chay=%0d lech=%0d bat bien=%0d",
                   n_run, n_mismatch, n_inv);
        end
        $display("======================================================");

        $finish;
    end

endmodule