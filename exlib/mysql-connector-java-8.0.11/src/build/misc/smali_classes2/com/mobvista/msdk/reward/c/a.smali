ame.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txtbname.setText("jTextField1");
        getContentPane().add(txtbname, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 120, 210, -1));

        txtbauthor.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txtbauthor.setText("jTextField1");
        getContentPane().add(txtbauthor, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 150, 210, -1));

        cmbbcategory.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        cmbbcategory.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Choose book category", "Science", "Maths", "English", "History", "Art", "Commerce", "Tamil", "Health", "Bio", "Chemestry", "Com. Maths", "Physics" }));
        cmbbcategory.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmbbcategoryActionPerformed(evt);
            }
        });
        getContentPane().add(cmbbcategory, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 190, 210, -1));

        lblbid.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        getContentPane().add(lblbid, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 90, 210, 20));

        btnbdelete.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        btnbdelete.setText("Delete");
        btnbdelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnbdeleteActionPerformed(evt);
            }
        });
        getContentPane().add(btnbdelete, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 380, 310, 40));

        btnbinsert.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        btnbinsert.setText("Insert");
        btnbinsert.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnbinsertActionPerformed(evt);
            }
        });
        getContentPane().add(btnbinsert, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 280, 310, 40));

        btnbupdate.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        btnbupdate.setText("Update");
        btnbupdate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnbupdateActionPerformed(evt);
            }
        });
        getContentPane().add(btnbupdate, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 330, 310, 40));

        txtsearch.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txtsearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtsearchActionPerformed(evt);
            }
        });
        txtsearch.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtsearchKeyReleased(evt);
            }
        });
        getContentPane().add(txtsearch, new org.netbeans.lib.awtextra.AbsoluteConstraints(440, 80, 490, 30));

        btnbsearch.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        btnbsearch.setText("Search");
        btnbsearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnbsearchActionPerformed(evt);
            }
        });
        getContentPane().add(btnbsearch, new org.netbeans.lib.awtextra.AbsoluteConstraints(980, 70, 180, 40));

   