menu = """

[d] Depositar
[s] Sacar
[e] Extrato
[s] Sair

=> """

saldo = 0
limite = 500
extrato = ""
numero_saques = 0
LIMITE_SAQUES = 3

while True:
    opcao = input(menu)

    if opcao == "d":
        valor = float(input("Informe o valor do dep�sito: "))

        if valor > 0:
            saldo += valor
            extrato += f"Dep�sito: R$ {valor:.2f}\n"

        else:
            print("Opera��o falhou! O valor informado � inv�lido.")

    elif opcao == "s":
        valor = float(input("Informe o valor do saque: "))

        excedeu_saldo = valor > saldo
        excedeu_limite = valor > limite
        excedeu_saques = numero_saques >= LIMITE_SAQUES

        if excedeu_saldo:
            print("Opera��o falhou! Voc� n�o tem saldo suficiente.")

        elif excedeu_limite:
            print("Opera��o falhou! O valor do saque excede o limite")

        elif excedeu_saques:
            print("Opera��o falhou! N�mero m�ximo de saques excedido.")

        elif valor > 0:
            saldo -= valor
            extrato += f"Saque: R$ {valor:.2f}\n"
            numero_saques += 1

        else:
            print("Opera��o falhou! O valor informado � invalido.")

    elif opcao == "e":
        print("\n==================== EXTRATO ====================")
        print("N�o foram realizadas movimenta��es." if not extrato else extrato)
        print(f"\nSaldo: R$ {saldo:.2f}")
        print("\n====================+++++++++====================")

    elif opcao == "q":
        break

    else:
        print("Opera��o invalida, por favor selecione novamente a opera��o desejada.")
