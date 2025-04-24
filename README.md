# Analise_carregamento_EV
Analisando hábitos de carregamento de veículos elétricos

As electronic vehicles (EVs) become more popular, there is an increasing need for access to charging stations, also known as ports. To that end, many modern apartment buildings have begun retrofitting their parking garages to include shared charging stations. A charging station is shared if it is accessible by anyone in the building.
![277263A8-43D2-47DB-AB30-6228AB955F0C](https://github.com/user-attachments/assets/c873daee-f498-4f90-83b5-6aee52388716)
But with increasing demand comes competition for these ports — nothing is more frustrating than coming home to find no charging stations available! In this project, you will use a dataset to help apartment building managers better understand their tenants’ EV charging habits.

The data has been loaded into a PostgreSQL database with a table named `charging_sessions` with the following columns:
## charging_sessions

| Column | Definition | Data type |
|-|-|-|
|`garage_id`| Identifier for the garage/building|`VARCHAR`|
|`user_id` | Identifier for the individual user|`VARCHAR`|
|`user_type`|Indicating whether the station is `Shared` or `Private`| `VARCHAR` |
|`start_plugin`|The date and time the session started |`DATETIME`|
|`start_plugin_hour`|The hour (in military time) that the session started | `NUMERIC`|
|`end_plugout`|The date and time the session ended | `DATETIME` |
|`end_plugout_hour`|The hour (in military time) that the session ended | `NUMERIC`|
|`duration_hours`| The length of the session, in hours|`NUMERIC`|
|`el_kwh`| Amount of electricity used (in Kilowatt hours)|`NUMERIC`|
|`month_plugin`| The month that the session started |`VARCHAR`|
|`weekdays_plugin`| The day of the week that the session started|`VARCHAR`|

## Perguntas e respostas
Aqui estão 3 perguntas que devem ser respondidas usando a tabela acima.
### Questão 1
Encontre o número de indivíduos únicos que utilizam as estações de carregamento compartilhadas de cada garagem. A saída deve conter duas colunas: garage_id e num_unique_users. Classifique seus resultados pelo número de usuários únicos, do maior para o menor. Salve o resultado como unique_users_per_garage.
### Questão 2
Encontre os 10 horários de início de carregamento mais populares (por dia da semana e hora de início) para sessões que usam estações de carregamento compartilhadas. Seu resultado deve conter três colunas: weekdays_plugin, start_plugin_hour e uma coluna chamada num_charging_sessions contendo o número de plugins naquele dia da semana e naquela hora. Classifique seus resultados do maior para o menor número de sessões. Salve o resultado como most_popular_shared_start_times.
### Questão 3
Encontre os usuários cuja duração média de carregamento é superior a 10 horas ao usar estações de carregamento compartilhadas. Seu resultado deve conter duas colunas: user_id e avg_charging_duration. Classifique seu resultado da maior para a menor duração média de carregamento. Salve o resultado como long_duration_shared_users.
