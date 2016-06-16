package com.washu.dashboard

class Category {

    String name
    Integer displayOrder
    String helpText

//    static hasMany = [subCategories: SubCategory]

    static mapping = {
    }

    static constraints = {
        helpText nullable: true
    }

    public String toString(){
        return this.name
    }


}
