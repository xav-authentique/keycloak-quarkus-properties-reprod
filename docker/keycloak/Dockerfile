FROM registry.access.redhat.com/ubi9:9.6-1752069608 AS ubi-micro-build
RUN mkdir -p /mnt/rootfs
RUN dnf install --installroot /mnt/rootfs curl --releasever 9 --setopt install_weak_deps=false --nodocs -y; dnf --installroot /mnt/rootfs clean all

FROM quay.io/keycloak/keycloak:26.3.3

COPY --from=ubi-micro-build /mnt/rootfs /
COPY keycloak.conf /opt/keycloak/conf/keycloak.conf
COPY ./context/quarkus.properties  /opt/keycloak/conf
COPY ./context/cache-ispn.xml  /opt/keycloak/conf
COPY ./context/federated-userstore.jar /opt/keycloak/providers

# Enable health and metrics support
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Configure a database vendor
ENV KC_DB=mysql

WORKDIR /opt/keycloak
RUN /opt/keycloak/bin/kc.sh build --verbose

ENTRYPOINT ["bash", "-c", "/opt/keycloak/bin/kc.sh start"]
