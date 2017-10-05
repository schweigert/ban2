Create Function hierarquia(integer) Returns Table(character varying) as $$
Declare
 aux integer Default -1;
Begin

    EXECUTE SELECT codProdutoSubstituto INTO aux FROM Produtos WHERE codProduto = $1;

    if $aux <> -1
        RETURN QUERY (SELECT * FROM hierarquiaProd(aux))
            UNION Select nome FROM produtos WHERE codProduto = aux;
    end if;

End;
$$
Language plpgsql;
