/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nir;

import nir.Frames.Autorize;
import javax.swing.JFrame;

/**
 *
 * @author Alexkcey
 */
public class NIR {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
          Autorize autorize = new Autorize();
          autorize.setTitle("Психологические тесты");
          autorize.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
          autorize.setVisible(true);
          autorize.setResizable(false);
    }
    
}
