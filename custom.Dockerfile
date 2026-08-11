FROM frappe/erpnext:v16.11.0
USER frappe
WORKDIR /home/frappe/frappe-bench
RUN echo '{"socketio_port": 9000}' > sites/common_site_config.json && bench get-app https://github.com/frappe/helpdesk
RUN bench get-app https://github.com/frappe/telephony --skip-assets
RUN bench get-app https://github.com/MohamedRaed1990/sabre_finance
RUN bench get-app https://github.com/MRaed1/sabre_sales
RUN bench get-app https://github.com/MRaed1/sabre_helpdesk
#RUN bench get-app https://github.com/ERPGulf/3cx-claudion
RUN bench get-app https://github.com/MohamedRaed1990/3cx-claudion
