package com.eogame.model;

import java.io.Serializable;

/**
 * 游戏角色信息
 * @author.  Malone
 */
public class EORoleInfo implements Serializable {

    private String roleId;
    private String roleName;
    
    private String serverId;
    private String serverName;
    
    private int roleLevel;

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public int getRoleLevel() {
        return roleLevel;
    }

    public void setRoleLevel(int roleLevel) {
        this.roleLevel = roleLevel;
    }

    public String getServerId() {
        return serverId;
    }

    public void setServerId(String serverId) {
        this.serverId = serverId;
    }

    public String getServerName() {
        return serverName;
    }

    public void setServerName(String serverName) {
        this.serverName = serverName;
    }

    @Override
    public boolean equals(Object o) {
    	
        if (this == o) return true;
        
        if (o == null || getClass() != o.getClass()) return false;

        EORoleInfo roleInfo = (EORoleInfo) o;

        if (roleLevel  != roleInfo.roleLevel) return false;
        if (roleId     != null ? !roleId.equals(roleInfo.roleId)         : roleInfo.roleId     != null) return false;
        if (roleName   != null ? !roleName.equals(roleInfo.roleName)     : roleInfo.roleName   != null) return false;
        if (serverId   != null ? !serverId.equals(roleInfo.serverId)     : roleInfo.serverId   != null) return false;
        if (serverName != null ? !serverName.equals(roleInfo.serverName) : roleInfo.serverName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
    	
        int result = roleId != null ? roleId.hashCode() : 0;
        
        result = 31 * result + (roleName   != null ? roleName.hashCode()   : 0);
        result = 31 * result + roleLevel;
        result = 31 * result + (serverId   != null ? serverId.hashCode()   : 0);
        result = 31 * result + (serverName != null ? serverName.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "EORoleInfo[" +
                "roleId='" + roleId + '\'' +
                ", roleName='" + roleName + '\'' +
                ", serverId='" + serverId + '\'' +
                ", serverName='" + serverName + '\'' +
                ", roleLevel=" + roleLevel +
                ']';
    }
}
