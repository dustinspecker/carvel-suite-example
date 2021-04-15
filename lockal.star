executable_from_archive(
  name = "bin/helm",
  location = "https://get.helm.sh/helm-v3.5.4-linux-amd64.tar.gz",
  archive_checksum = "d28c088b3764ee80b9cb7bb329f5a70bfe791d9e5c4c97b2aac943dcc69e91c36bcaecbf34b8e880ecc12ba1bd7e53f5c762deea320202b7471e1df47757f8ee",
  extract_filepath = "linux-amd64/helm",
  executable_checksum = "a7aa2810507b012a1696e02f3bbb615cf09cc574cb27937197a3b860192069ad1659f504a51282ff6a93121dc932f77e4d96e6efa44525c2ba1b7b7d21aabb8b"
)

executable(
  name = "bin/kapp",
  location = "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.36.0/kapp-linux-amd64",
  checksum = "6d21b31fc8d4906a6fcdcf433ad65aa75ab2aa332d5ab3373b808ca9145df527ba5e5a7c66a9d8079071fb126c78efea9aaea0042131594422a148cca8b473fa"
)

executable(
  name = "bin/kind",
  location = "https://github.com/kubernetes-sigs/kind/releases/download/v0.10.0/kind-linux-amd64",
  checksum = "1d2ef9f377ed513850dfd5028c80f3fefd7e3f28e3fc6050593c8a3894b74a40b9761f401ccf44d5aa199e9c753bbb9c1ffb51319f4864a1a2ba184d1574d242"
)

executable(
  name = "bin/vendir",
  location = "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.18.0/vendir-linux-amd64",
  checksum = "343723f0da8fbd9b067a20a56847e15f9bece8a07bfd9822dfd2d3c508ddeefca78c709a45695e9c54bbd7f5877533e26c70941b01e5c130253cc5f2c524d05d"
)

executable(
  name = "bin/ytt",
  location = "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.31.0/ytt-linux-amd64",
  checksum = "6b9297ed0b414069c2bedaa01ea9f0cbc674448681d1c9cce57bf2c06fae7ef6141b27660911b7e8fbbfde0c8815fae28df880334f928aa910a24e13c8b57d25"
)

