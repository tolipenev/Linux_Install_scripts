#/usr/bin/python3.6
import subprocess
report = subprocess.run(["ping", "-c 1", "google.com"], stdout=subprocess.PIPE).stdout
report2 = report.split("")


print (report2)
# for rep in report2:
#     print (rep)



# def show(cpu):
#     color = '#cc575d' if cpu > 75 else '#d19a66' if cpu > 50 else '#fafafa'/usr/bin/python3.6 /home/alp/.config/argos/ping.py
Traceback (most recent call last):
  File "/home/alp/.config/argos/ping.py", line 4, in <module>
    report2 = report.split("")
TypeError: a bytes-like object is required, not 'str'

Process finished with exit code 1

#     return "<span color='%s'>%3d%%</span>" % (color, cpu)

# print("%s|font=monospace" % r)
# print("---")
# for i, cpu in enumerate(cpus):
#     print("CPU %d: %s|font=monospace" % (i, show(cpu)))
# print("---")
# print("System monitor|iconName=utilities-system-monitor-symbolic" +
#       " bash=gnome-system-monitor terminal=false")


