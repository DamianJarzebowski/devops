# Most Popular Helm Commands

**`helm install <release-name> <chart>`**

Installs a new release of a chart into the Kubernetes cluster. `<release-name>` is a unique name you assign to the deployed application, and `<chart>` is the name of the chart (can be from a repository or a local path/packaged archive).

#

**`helm list`**

Lists all deployed releases in the current namespace (default). Use the `--all-namespaces` flag to view releases across all namespaces.

#

**`helm upgrade <release-name> <chart> [flags]`**

Upgrades an existing release to a newer version of the chart or updates its configuration. `<release-name>` is the name of the release you want to upgrade, and `<chart>` is the new chart version or the same chart with updated configuration (e.g., via `-f values.yaml` or the `--set` flag).

#

**`helm uninstall <release-name> [flags]`**

Uninstalls a deployed release from the Kubernetes cluster. It removes all Kubernetes resources associated with that release. The `--purge` flag (available in Helm v2) completely removed the release history; in Helm v3, the history is preserved by default.

#

**`helm repo add <name> <url>`**

Adds a new Helm chart repository to your local configuration. `<name>` is the alias you'll use to refer to the repository, and `<url>` is the URL of the repository.

#

**`helm repo update`**

Retrieves the latest information about available charts from all configured repositories.

#

**`helm show values <chart>`**

Displays the default configuration values (the `values.yaml` file) for a given chart without installing it.

#

**`helm template <release-name> <chart> [flags]`**

Locally renders the Helm chart templates with the provided values but does not deploy anything to the Kubernetes cluster. Useful for verifying the Kubernetes manifests that will be generated.

#

**`helm history <release-name>`**

Shows the revision history of a given release, allowing you to see previous deployments.

#

**`helm rollback <release-name> [revision] [flags]`**
Rolls back a release to a previous or specified revision. Without specifying `<revision>`, it rolls back to the last successful revision.

