FROM bitnami/minideb:bullseye
RUN install_packages ca-certificates curl

ADD https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 ./get_helm.sh
RUN chmod 700 get_helm.sh
RUN ./get_helm.sh && rm get_helm.sh
