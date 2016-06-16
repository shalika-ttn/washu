package com.washu.dashboard

class Center {

    String name
    String serverURL
    String websiteURL

    static constraints = {
        websiteURL nullable: true
        serverURL unique: true

    }

    static hasMany = [locations:Location]
    static  belongsTo = Location
}
