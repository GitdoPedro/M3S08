CREATE OR REPLACE FUNCTION calcular_desconto_produto (
  codigo_produto IN NUMBER,
  aplicar_desconto IN BOOLEAN
) RETURN NUMBER
IS
  valor_produto NUMBER;
BEGIN
  SELECT valor INTO valor_produto
  FROM produtos
  WHERE codigo = codigo_produto;

  IF aplicar_desconto = TRUE THEN
    valor_produto := valor_produto - (valor_produto * 0.1);
  END IF;

  RETURN valor_produto;
END;

