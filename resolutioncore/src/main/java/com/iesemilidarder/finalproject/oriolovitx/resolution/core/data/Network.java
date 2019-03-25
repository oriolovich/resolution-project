package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

import org.apache.commons.lang3.StringUtils;
import java.util.UUID;

public class Network {

    private String id;
    private String ip;
    private String description;
    private String domain;

    public Network() {
        this.id = UUID.randomUUID().toString();
    }

    public Network(String id, String ip, String description, String domain) {
        //this.id = id;
        if (StringUtils.isEmpty(id)){
            id = UUID.randomUUID().toString();
        }
        this.id = id;
        this.ip = ip;
        this.description = description;
        this.domain = domain;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public String getDomain() { return domain;
    }

    public void setDomain(String domain) { this.domain = domain;
    }

}
