package login;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import db.Database;
import db.Role;
import db.User;

public class CCAuthorizingRealm extends AuthorizingRealm {

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		String username = (String)principals.getPrimaryPrincipal();
		
		SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
		List<Role> roles = Database.getAssignedRolesForUsername(username);
		Set<String> rolesAsString = new HashSet<String>();
		roles.forEach(r -> rolesAsString.add(r.getName()));
		authorizationInfo.setRoles(rolesAsString);
		// Optional: Permissions authorizationInfo.setStringPermissions(Database.getPermissionsForUser(username));
		return authorizationInfo;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String username = (String)token.getPrincipal();
		User user = Database.getUserByUsername(username);
		
		SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user.getUsername(), user.getPassword(), null, getName());
		return authenticationInfo;
	}
	
	@Override
	public void clearCachedAuthorizationInfo(PrincipalCollection principals) {
		super.clearCachedAuthorizationInfo(principals);
	}
	
}
