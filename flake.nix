{
  description = "A collection of flake template for me";

  outputs = { self }: {
    templates = {
      develop = {
        path = ./template;
        description = "A very basic flake for develop";
      };
    };
  };
}
