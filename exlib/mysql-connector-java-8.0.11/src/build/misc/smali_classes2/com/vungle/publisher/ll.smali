wt.event.KeyEvent evt) {
                txtbqtyKeyTyped(evt);
            }
        });
        getContentPane().add(txtbqty, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 230, 210, -1));

        tblbooks.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tblbooks.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblbooksMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tblbooks);

        getContentPane().add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 120, 800, 290));

        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel6.setText("Book Name");
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 84, -1, 20));

        jButton1.setText("<");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(1120, 10, 50, 40));

        jLabel8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/school_management/library_management/images/lms-2.jpg"))); // NOI18N
        jLabel8.setText("jLabel8");
        getContentPane().add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1210, 940));

        jLabel9.setText("jLabel9");
        getContentPane().add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(370, 30, -1, -1));

        setSize(new java.awt.Dimension(1196, 479));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnbinsertActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnbinsertActionPerformed
        // TODO add your handling code here:

        String name = txtbname.getText();
        String author = txtbauthor.getText();
        String category = cmbbcategory.getSelectedItem().toString();
        String qty = txtbqty.getText();

        
        //required fields------------------------------------------------------------------------------------------------------
        if (txtbname.getText().equalsIgnoreCase("") || txtbauthor.getText().equalsIgnoreCase("") || txtbqty.getText().equalsIgnoreCase("")
                || cmbbcategory.getSelectedItem() == "Choose book category") {
            JOptionPane.showMessageDialog(null, "Please fill the required fields", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }
        //qty validation-------------------------------------------------------------------------------
        int num = 0;
        try {
            num = Integer.parseInt(qty);
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Qty should be an number", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }
        if (num > 15 || num < 1) {
            JOptionPane.showMessage