package _4c1s.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network C1S
{
    @display("bgb=565,320");
    submodules:
        server: StandardHost {
            @display("p=263,131");
        }
        client1: StandardHost {
            @display("p=76,221");
        }
        client2: StandardHost {
            @display("p=199,221");
        }
        client3: StandardHost {
            @display("p=302,216");
        }
        client4: StandardHost {
            @display("p=391,219");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=269,52");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client1.ethg++;
        server.ethg++ <--> Eth100M <--> client2.ethg++;
        server.ethg++ <--> Eth100M <--> client3.ethg++;
        server.ethg++ <--> Eth100M <--> client4.ethg++;
}

