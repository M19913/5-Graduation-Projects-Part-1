/* ����� �������� view  */
create view view_Stores as
select products.product_id as'�������',product_name as'��� ������',type as'�����',Expiry as'����� ������ ��������',Total as'�������� �� ������' from stores,Products where stores.product_id=Products.product_id

select * from view_Stores

/* ����� ��������� ��������� view  */
create view Products_Barcode as
select products.product_id as'�������',product_name as'��� ������',type as'�����',Expiry as'����� ������ ��������',price_sale as'��� �����',price_buy as'��� ������',barcode as'������' from Products,Barcode where Barcode.product_id=Products.product_id


select * from Products_Barcode



/* ��� ��� �������� �� ���� �����  */
select products.product_id as 'Id' ,product_name as 'Product Name' ,type as 'Type',price_buy as 'Price',barcode as 'Barcode',Total as 'Store' from products,Stores,Barcode where Stores.product_id=products.product_id and barcode.product_id=products.product_id 

/* ������� ������� */

select report_id as '�������',customer_name as '������',username as '������',report_date as '����� �������',Total as '�������� �����' from Report,Users, Customer where customer_id=Customer and Employee=user_id


/* ��������*/

select Bill_number as '����� ���� ��������',product_name as'������',producct_price as'��� ������',Quantity as '������',Subtotal as'�������� ������' from Bill,Products where product_id=product


/* ������� �������*/
select * from Products, stores where Products.product_id=stores.product_id