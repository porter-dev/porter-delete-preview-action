# porter-preview-action

This Github action creates a new preview environment in Porter.

## Usage

```yaml
steps:
  - name: Checkout code
    uses: actions/checkout@v2.3.4
  - name: Create Porter preview environment
    uses: porter-dev/porter-delete-preview-action@v0.1.0
    with:
      cluster: 1234
      project: 4321
      token: ${{ secrets.PORTER_TOKEN }}
      namespace: pr-${{ github.event.pull_request.number }}
      installation_id: 12344321
```

## Configuration Options

The possible inputs are:

- `token`: (string, required): Token for Porter authentication.
- `project`: (number, required): Project ID of Porter project.
- `cluster`: (number, required): Cluster ID of Porter cluster.
- `namespace`: (string, required): Namespace of the application (default "default")
- `installation_id`: (number, required): The installation ID for the Github app which manages preview envs
