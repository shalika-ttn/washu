import com.washu.dashboard.Role
import com.washu.dashboard.User
import com.washu.dashboard.UserRole
import com.washu.dashboard.constants.DashBoardConstant

class BootStrap {

    def init = { servletContext ->


        if (!Role.count()) {
            createRoles()
        }

        if (!User.count()) {
            createUsers()
        }
    }
    public void createRoles() {
        new Role('ROLE_ADMIN').save([flush: true,failOnError: true])
        new Role('ROLE_USER').save([flush: true,failOnError: true])
        log.info('RoleType is created')
    }
    void createUsers() {
        User user = new User(username: 'admin@211counts.org', password: "admin12345", name: "Admin")
        user.save(flush: true, failOnError: true)
        UserRole userRole = UserRole.create(user,Role.findByAuthority(DashBoardConstant.ROLE_USER),true)
        UserRole adminRole = UserRole.create(user,Role.findByAuthority(DashBoardConstant.ROLE_ADMIN),true)
        log.info('user created with role')
    }
    def destroy = {
    }
}
