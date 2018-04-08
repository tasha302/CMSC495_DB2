//This will be modified to be the overall Entry definition
package com.jeremyworthy;

import java.awt.*;

public class Entry {
    private int itemID;
    private String description;
    private int onHand;
    private double cost;


    public Entry(int itemID, String description, int onHand, double cost) {
        super();

        this.itemID = itemID;
        this.description = description;
        this.onHand = onHand;
        this.cost = cost;
       }

    public int getItemID() {
        return itemID;
    }

    public void setItemID(int itemID) {
        this.itemID = itemID;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getOnHand() {
        return onHand;
    }

    public void setOnHand(int onHand) {
        this.onHand = onHand;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }
}

