{
  description = "A collection of flake template for me";

  outputs = { self }: {
    templates = {
      template = {
        path = ./template;
        description = "A very basic flake for develop Nix";
      };
      python = {
        path = ./python;
        description = "A very basic flake for develop python";
      };
    };
  };
}
