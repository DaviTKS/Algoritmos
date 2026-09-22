import tkinter as tk


def ler_ordem():
    """Le uma ordem inteira e positiva para a matriz quadrada."""
    while True:
        try:
            ordem = int(input("Digite a ordem da matriz (X): "))
            if ordem > 0:
                return ordem
            print("A ordem deve ser maior que zero.")
        except ValueError:
            print("Digite um numero inteiro valido.")


def preencher_matriz(ordem):
    """Solicita ao usuario todos os valores da matriz."""
    matriz = []

    for linha in range(ordem):
        nova_linha = []
        for coluna in range(ordem):
            while True:
                try:
                    valor = int(
                        input(f"Digite o elemento [{linha + 1}, {coluna + 1}]: ")
                    )
                    nova_linha.append(valor)
                    break
                except ValueError:
                    print("Digite um numero inteiro valido.")
        matriz.append(nova_linha)

    return matriz


def cor_da_celula(linha, coluna, ordem):
    esta_na_principal = linha == coluna
    esta_na_secundaria = linha + coluna == ordem - 1

    if esta_na_principal and esta_na_secundaria:
        return "#a855f7"  # encontro das duas diagonais
    if esta_na_principal:
        return "#ef4444"
    if esta_na_secundaria:
        return "#3b82f6"
    return "#f1f5f9"


def mostrar_matriz(matriz):
    ordem = len(matriz)
    janela = tk.Tk()
    janela.title(f"Matriz {ordem} x {ordem}")
    janela.configure(bg="white", padx=20, pady=20)

    titulo = tk.Label(
        janela,
        text=f"Matriz {ordem} x {ordem}",
        font=("Arial", 16, "bold"),
        bg="white",
    )
    titulo.grid(row=0, column=0, columnspan=ordem, pady=(0, 12))

    for linha in range(ordem):
        for coluna in range(ordem):
            celula = tk.Label(
                janela,
                text=str(matriz[linha][coluna]),
                width=7,
                height=3,
                font=("Arial", 12, "bold"),
                fg="white" if cor_da_celula(linha, coluna, ordem) != "#f1f5f9" else "#111827",
                bg=cor_da_celula(linha, coluna, ordem),
                relief="solid",
                borderwidth=1,
            )
            celula.grid(row=linha + 1, column=coluna, padx=2, pady=2)

    legenda = tk.Label(
        janela,
        text="Vermelho: principal   Azul: secundaria   Roxo: encontro",
        font=("Arial", 10),
        bg="white",
    )
    legenda.grid(row=ordem + 1, column=0, columnspan=ordem, pady=(12, 0))

    janela.mainloop()


def main():
    ordem = ler_ordem()
    matriz = preencher_matriz(ordem)
    mostrar_matriz(matriz)


if __name__ == "__main__":
    main()
