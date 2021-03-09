using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Leo.Bank
{
    public class Conta
    {
        //atributos da classe conta
        private TipoConta TipoConta { get; set; }

        private double Saldo { get; set; }

        private double Credito { get; set; }

        private string Nome { get; set; }

        //metodo construtor
        public Conta(TipoConta tipoConta, double saldo, double credito, string nome)
        {
            this.TipoConta = tipoConta;
            this.Saldo = saldo;
            this.Credito = credito;
            this.Nome = nome;
        }

        //metodo sacar, usando um boleano
        public bool Sacar(double valorSaque)
        {
            //Validacao de saldo suficiente
            if(this.Saldo - valorSaque < (this.Credito * -1))
            {
                Console.WriteLine("Saldo insuficiente!");
                return false;
            }

            this.Saldo -= valorSaque;

            //alerta saldo atual da conta, usando parametros e argumentos
            Console.WriteLine("Saldo atual da conta de {0} é {1}", this.Nome, this.Saldo);

            return true;
        }

        //metodo de deposito
        public void Depositar(double valorDeposito)
        {
            //acrescenta o valor do proprio saldo mais o valor do deposito
            this.Saldo += valorDeposito;

            //alerta saldo atual da conta, usando parametros e argumentos
            Console.WriteLine("Saldo atual da conta de {0} é {1}", this.Nome, this.Saldo);
        }

        //metodo de transferir
        public void Transferir(double valorTransferencia, Conta contaDestino)
        {
            if(this.Sacar(valorTransferencia))
            {
                contaDestino.Depositar(valorTransferencia);
            }
        }

        //metodo para respresentar no console, override = sobreescrever
        //override usado para graver um log, o que esta acontencendo na aplicacao
        public override string ToString()
        {
            string retorno = "";
            retorno += "TipoConta: " + this.TipoConta + " | ";
            retorno += "Nome: " + this.Nome + " | ";
            retorno += "Saldo: R$" + this.Saldo + " | ";
            retorno += "Crédito: R$ " + this.Credito;
            return retorno;
        }

    }
}
