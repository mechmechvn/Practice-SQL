CREATE TABLE employees (
id int serial PRIMARY KEY,
created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
name varchar(50) NOT NULL,
address varchar(255),
phone_number varchar(20),
department_id
)

INSERT INTO employees (name, address, salary, phone_number, department_id)
VALUES('Dung Ngo', 'Dong Da', 0.5, '01675890', null);

update employees
set department_id = 2 where id = '6';

alter table employees
            add column department_id int,
            add constraint fk_deparment
            foreign key (department_id)
            references departments (id);

select e.name, e.salary, d.name
from employees e
full join departments d on e.department_id = d.id