package com.washu.dashboard

class Location {

    String name
    String code
    Boolean upComingCentre =false

    static constraints = {
    }
    static hasMany = [centers: Center]
}
