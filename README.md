# :bank: Sales API


<table>
  <tr>
    <td>Ruby version</td>
    <td>
      2.7.5
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      7.0.2.3
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td>
      SQLite3 (dev)
    </td>
  </tr>
</table>

## :gear: Configurações iniciais para executar o projeto 

```bash
# clone o projeto
git clone https://github.com/Panjissos/sales.git

# abra a pasta clonada
cd sales

# instale as dependências do Ruby on Rails
bundle install --without production

# crie o banco de dados
rails db:create

# crie as tabelas
rails db:migrate

# execute o projeto
rails s
```

:office: O backend está disponível na porta `http://localhost:3000`.
### API Endpoint

Os endpoints disponíveis:

| Endpoints                   | Função                    |              
| --------------------------- | --------------------------|
| `GET /api/batches`          | Carrega todos os lotes    |               
| `GET /api/batche/:id`       | Carrega um único lote     |                  
| `POST /api/batches`         | Cria um lote              |             
| `PUT /api/batches:id`       | Edita um lote             |
| `DELETE /api/batches:id`    | Deleta um lote            |              
| `GET /api/orders`           | Carregas todos os pedidos |                 
| `GET /api/orders/:id`       | Carrega um único pedido   |    
| `POST /api/orders`          | Cria um pedido            |                
| `PUT /api/orders/:id`       | Edita um pedido           |
| `DELETE /api/orders/:id`    | Deleta um pedido          |       

### :airplane: Postman para testar API

https://www.postman.com/downloads/

### :bellhop_bell: Ainda falta

- Implementar relacionamento one to many(has_many), entre lote e pedido, onde para um lote possui vários pedidos.
- Implementar token
- Implementar testes




