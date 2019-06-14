# cake
i love cake


# Building 

You can get help for the Makefile

```bash
make help
```

### Build and Push a Container


Set a few registry variables and build and push the container

```bash
REGISTRY="krisnova" TARGET="cake" GOTARGET="github.com/solo-io/cake" make container push
```

### Build the binary

This will build to `$GOPATH`/bin/cake

```bash
make build
```

### Run the binary

```bash
make run
```