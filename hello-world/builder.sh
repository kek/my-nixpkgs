source $stdenv/setup
echo source is $src
echo out is $out
gcc -o hello-world $src/hello-world.c

mkdir -p $out/bin
cp hello-world $out/bin
