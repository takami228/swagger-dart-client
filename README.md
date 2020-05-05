# Swagger Dart Client

This repository is sample to generate dart client code using swagger/openapi yaml.

openapi-generator-cli version is 4.3.0(https://openapi-generator.tech/docs/installation).

## directory

```sh
$ tree -L 2  .
.
├── README.md
├── build
│   ├── README.md
│   ├── doc
│   ├── git_push.sh
│   ├── lib
│   ├── pubspec.yaml
│   └── test
├── codegen.sh
├── openapi-generator-cli.jar
├── petstore.yaml
└── template
    ├── dart
    └── dart2
```

## Usage

```sh
# clean build folder
$ ./codegen.sh clean

# generate dart code
$ ./codegen.sh build-dart

# generate dart code
$ ./codegen.sh build-dart2
```

## Customize

To Customize generated code, you could update mustache template files.

Original mustache files are in [here](https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator/src/main/resources).