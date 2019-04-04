package com.iesemilidarder.finalproject.oriolovitx.resolution.web.service;

import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Network;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service

public class NetworkService {

    /* ArrayList d'objectes de la classe "Network"*/
    private static List<Network> networkList = new ArrayList<Network>(Arrays.asList(
            new Network("1", "83.10.25.78", "Decription 1", "10"),
            new Network("2", "67.19.23.54", "Decription 2", "20"),
            new Network("3", "78.1.23.55", "Decription 3", "30")
    ));

    /*Métode per veure tots les xarxes*/
    public List<Network> getAllNetworks() {
        return networkList;
    }

    /*Métode per veure les xarxes per id*/
    public Network getNetworkById(String id) {
        try {
            if (id == null) {
                return null;
            }
            return networkList.stream().filter(t -> t.getId().equals(id)).findFirst().get();
        } catch (Exception e) {
            return null;
        }
    }

    /*Métode per afegir xarxa*/
    public void addNetwork(Network network) {
        networkList.add(network);
    }

    /*Métod actuliza xarxa*/
    public void updateNetwork(Network prod, String id) {
        for (int i = 0; i < networkList.size(); i++) {
            Network network = networkList.get(i);
            if (network.getId().equals(id)) {
                networkList.set(i, prod);
            }
        }
    }

    /*Metodo eliminar producto*/
    public void deleteNetwork(String id) {
        networkList.removeIf(t -> t.getId().equals(id));
    }
}
