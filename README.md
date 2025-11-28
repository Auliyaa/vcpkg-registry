# vcpkg-registry

## reference documentation

- https://learn.microsoft.com/en-us/vcpkg/produce/publish-to-a-git-registry

## adding a new port


vcpkg --x-builtin-ports-root=./ports --x-builtin-registry-versions-dir=./versions x-add-version --all --verbose

```bash
git add ports/<port>
vcpkg format-manifest ports/<port>/vcpkg.json
git commit -m "add port: <port> v<version>"
vcpkg --x-builtin-ports-root=./ports --x-builtin-registry-versions-dir=./versions --verbose x-add-version <port>
git add versions
git commit -m "version database"
git push
```

## Installing auliyaa triplet

```bash
cp auliyaa.cmake ${VCPKG_ROOT}/triplets/community/
```