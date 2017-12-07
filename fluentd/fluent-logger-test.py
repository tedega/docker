import os
import socket
from fluent import sender
from fluent import event


import logging
from fluent import handler

custom_format = {
  'host': '%(hostname)s',
  'where': '%(module)s.%(funcName)s',
  'type': '%(levelname)s',
  'stack_trace': '%(exc_text)s'
}

logging.basicConfig(level=logging.INFO)
l = logging.getLogger(__name__)
h = handler.FluentHandler('app.follow', host='localhost', port=24224)
formatter = handler.FluentRecordFormatter(custom_format)
h.setFormatter(formatter)
l.addHandler(h)
l.info({
  'from': 'userA',
  'to': 'userB'
})
l.info('{"from": "userC", "to": "userD"}')
l.info("This log entry will be logged with the additional key: 'message'.")
l.error("This log entry will be logged with the additional key: 'message'.")

# def set_logger(service, hostname=None, containerid=None, fluentd_host="localhost", fluentd_port=24224):
#     """TODO: Docstring for set_logger.
#     :service: TODO
#     :host: TODO
#     :containerid: TODO
#     :fluentd_host: TODO
#     :fluentd_port: TODO
#     """
# 
#     hostname = socket.gethostname()
#     if hostname is None:
#         hostname = os.environ.get("HOST_HOSTNAME", hostname)
#     if containerid is None:
#         containerid = hostname
#         if containerid == hostname:
#             containerid = "-"
# 
#     log_str = "{}.{}.{}".format(hostname, containerid, service)
#     sender.setup(log_str, host=fluentd_host, port=fluentd_port)
# 
# 
# def log(msg, cat, lvl="INFO", correlation_id=None):
#     """TODO: Docstring for log.
# 
#     :msg: TODO
#     :cat: TODO
#     :lvl: TODO
#     :correlation_id: TODO
#     :returns: TODO
#     """
#     log_str = "{}.{}.{}".format(cat, lvl, correlation_id)
#     event.Event(log_str, {'msg': msg})
# 
# 
# set_logger("test")
# log("Loglog", "CUSTOM")
