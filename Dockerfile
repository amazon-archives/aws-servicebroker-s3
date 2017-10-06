FROM ansibleplaybookbundle/apb-base
MAINTAINER Ansible Playbook Bundle Community

RUN yum -y install python-boto3 && yum clean all

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHMzLWFwYgpkZXNjcmlwdGlvbjogJ1MzIEJ1Y2tldCcKdGFnczoK\
ICAtIGFtYXpvbgogIC0gUzMKYmluZGFibGU6IHRydWUKYXN5bmM6IG9wdGlvbmFsCm1ldGFkYXRh\
OgogIGRpc3BsYXlOYW1lOiAiQW1hem9uIFMzIgogIGxvbmdEZXNjcmlwdGlvbjogIkFtYXpvbiBT\
aW1wbGUgU3RvcmFnZSBTZXJ2aWNlIChBbWF6b24gUzMpIGlzIHN0b3JhZ2UgZm9yIHRoZSBJbnRl\
cm5ldC4gWW91IGNhbiB1c2UgQW1hem9uIFMzIHRvIHN0b3JlIGFuZCByZXRyaWV2ZSBhbnkgYW1v\
dW50IG9mIGRhdGEgYXQgYW55IHRpbWUsIGZyb20gYW55d2hlcmUgb24gdGhlIHdlYi4gWW91IGNh\
biBhY2NvbXBsaXNoIHRoZXNlIHRhc2tzIHVzaW5nIHRoZSBzaW1wbGUgYW5kIGludHVpdGl2ZSB3\
ZWIgaW50ZXJmYWNlIG9mIHRoZSBBV1MgTWFuYWdlbWVudCBDb25zb2xlIgogIGltYWdlVXJsOiAi\
aHR0cHM6Ly9zMy5hbWF6b25hd3MuY29tL3RocC1hd3MtaWNvbnMtZGV2L1N0b3JhZ2VfQW1hem9u\
UzNfTEFSR0UucG5nIgogIGRvY3VtZW50YXRpb25Vcmw6IGh0dHBzOi8vYXdzLmFtYXpvbi5jb20v\
ZG9jdW1lbnRhdGlvbi9zMy8KcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlv\
bjogJ1MzIEJ1Y2tldCcKICAgIGZyZWU6IGZhbHNlCiAgICBwYXJhbWV0ZXJzOgogICAgICAtIG5h\
bWU6IHN0YWNrX2lkZW50aWZpZXIKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHRpdGxl\
OiBVbmlxdWUgU3RhY2sgSWRlbnRpZmllcgogICAgICAgIGRlc2NyaXB0aW9uOiAnVW5pcXVlIGlk\
ZW50aWZpZXIgdG8gYmUgaW5jbHVkZWQgaW4gdGhlIENsb3VkRm9ybWF0aW9uIFN0YWNrIE5hbWUg\
dG8gcHJldmVudCBuYW1pbmcgY29sbGlzaW9ucy4gTXVzdCBvbmx5IGNvbnRhaW4gYWxwaGFudW1l\
cmljIGNoYXJhY3RlcnMgYW5kIGh5cGhlbnMuIChlLmcuICJzYW1wbGUtUzMtc3RhY2siLCAicHJv\
ZHVjdGlvbi1TMy0wOS0yMDE3IiknCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgIC0gbmFtZTog\
YXdzX2FjY2Vzc19rZXkKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHRpdGxlOiBBV1Mg\
QWNjZXNzIEtleQogICAgICAgIGRlc2NyaXB0aW9uOiAnQVdTIEFjY2VzcyBLZXkgdG8gYXV0aGVu\
dGljYXRlIHRvIEFXUyB3aXRoLicKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgLSBuYW1lOiBh\
d3Nfc2VjcmV0X2tleQogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdGl0bGU6IEFXUyBT\
ZWNyZXQgS2V5CiAgICAgICAgZGVzY3JpcHRpb246ICdBV1MgU2VjcmV0IEtleSB0byBhdXRoZW50\
aWNhdGUgdG8gQVdTIHdpdGguJwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAtIG5hbWU6IHJl\
Z2lvbgogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdGl0bGU6IEFXUyBSZWdpb24KICAg\
ICAgICBkZXNjcmlwdGlvbjogJ0FXUyBSZWdpb24gdG8gY3JlYXRlIHRoZSBidWNrZXQgaW4uJwog\
ICAgICAgIHR5cGU6IGVudW0KICAgICAgICBlbnVtOgogICAgICAgICAgLSBhcC1ub3J0aGVhc3Qt\
MQogICAgICAgICAgLSBhcC1ub3J0aGVhc3QtMgogICAgICAgICAgLSBhcC1zb3V0aC0xCiAgICAg\
ICAgICAtIGFwLXNvdXRoZWFzdC0xCiAgICAgICAgICAtIGFwLXNvdXRoZWFzdC0yCiAgICAgICAg\
ICAtIGNhLWNlbnRyYWwtMQogICAgICAgICAgLSBldS1jZW50cmFsLTEKICAgICAgICAgIC0gZXUt\
d2VzdC0xCiAgICAgICAgICAtIGV1LXdlc3QtMgogICAgICAgICAgLSBzYS1lYXN0LTEKICAgICAg\
ICAgIC0gdXMtZWFzdC0xCiAgICAgICAgICAtIHVzLWVhc3QtMgogICAgICAgICAgLSB1cy13ZXN0\
LTEKICAgICAgICAgIC0gdXMtd2VzdC0yCiAgICAgICAgZGVmYXVsdDogInVzLXdlc3QtMiIKICAg\
ICAgLSBuYW1lOiBBcHBsaWNhdGlvbk5hbWUKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAg\
IHRpdGxlOiBBcHBsaWNhdGlvbiBOYW1lCiAgICAgICAgZGVzY3JpcHRpb246ICdUaGlzIHdpbGwg\
YmUgc2V0IGFzIHRoZSB2YWx1ZSBmb3IgdGhlIFwiQVBQTElDQVRJT05fTkFNRVwiIHRhZyBvbiBh\
bGwgc3VwcG9ydGVkIHJlc291cmNlcycKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgLSBuYW1l\
OiBCdWNrZXROYW1lCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICB0aXRsZTogQnVja2V0\
IE5hbWUKICAgICAgICBkZXNjcmlwdGlvbjogJ011c3QgY29udGFpbiBvbmx5IGxvd2VyY2FzZSBs\
ZXR0ZXJzLCBudW1iZXJzLCBwZXJpb2RzICguKSwgYW5kIGh5cGhlbnMgKC0pLENhbm5vdCBlbmQg\
aW4gbnVtYmVycycKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgLSBuYW1lOiBMb2dnaW5nUHJl\
Zml4CiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICB0aXRsZTogTG9nZ2luZyBQcmVmaXgK\
ICAgICAgICBkZXNjcmlwdGlvbjogJ011c3QgY29udGFpbiBvbmx5IGxvd2VyY2FzZSBsZXR0ZXJz\
LCBudW1iZXJzLCBwZXJpb2RzICguKSwgYW5kIGh5cGhlbnMgKC0pLENhbm5vdCBlbmQgaW4gbnVt\
YmVycycKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkZWZhdWx0OiAiTG9nIgogICAgICAt\
IG5hbWU6IEdsYWNpZXJMaWZlQ3ljbGVUcmFuc2l0aW9uSW5EYXlzCiAgICAgICAgcmVxdWlyZWQ6\
IHRydWUKICAgICAgICB0aXRsZTogR2xhY2llciBMaWZlIEN5Y2xlIFRyYW5pdGlvbiBJbiBEYXlz\
CiAgICAgICAgZGVzY3JpcHRpb246ICdEZWZpbmUgaG93IG1hbnkgZGF5cyBvYmplY3RzIHNob3Vs\
ZCBleGlzdCBiZWZvcmUgYmVpbmcgbW92ZWQgdG8gR2xhY2llcicKICAgICAgICB0eXBlOiBzdHJp\
bmcKICAgICAgICBkZWZhdWx0OiAiMSIKICAgICAgLSBuYW1lOiBFbmFibGVHbGFjaWVyTGlmZUN5\
Y2xlCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICB0aXRsZTogRW5hYmxlIEdsYWNpZXIg\
TGlmZSBDeWNsZQogICAgICAgIGRlc2NyaXB0aW9uOiAnZW5hYmxlIGFyY2hpdmluZyB0byBHbGFj\
aWVyIFN0b3JhZ2UgdHJ1ZSBvciBmYWxzZSBkZWZhdWx0IGlzIGZhbHNlJwogICAgICAgIHR5cGU6\
IGJvb2xlYW4KICAgICAgICBkZWZhdWx0OiBmYWxzZQogICAgICAtIG5hbWU6IEVuYWJsZVZlcnNp\
b25pbmcKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHRpdGxlOiBFbmFibGUgVmVyc2lv\
bmluZwogICAgICAgIGRlc2NyaXB0aW9uOiAnZW5hYmxlIHZlcnNpb25pbmcgZGVmYXVsdCBpcyB0\
cnVlJwogICAgICAgIHR5cGU6IGJvb2xlYW4KICAgICAgICBkZWZhdWx0OiB0cnVlCiAgICAgIC0g\
bmFtZTogTGlmZUN5Y2xlUHJlZml4CiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICB0aXRs\
ZTogTGlmZSBDeWNsZSBQcmVmaXgKICAgICAgICBkZXNjcmlwdGlvbjogJ011c3QgY29udGFpbiBv\
bmx5IGxvd2VyY2FzZSBsZXR0ZXJzLCBudW1iZXJzLCBwZXJpb2RzICguKSwgYW5kIGh5cGhlbnMg\
KC0pLENhbm5vdCBlbmQgaW4gbnVtYmVycycKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBk\
ZWZhdWx0OiAiQXJjaGl2ZSIKICAgICAgLSBuYW1lOiBCdWNrZXRBY2Nlc3NDb250cm9sCiAgICAg\
ICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICB0aXRsZTogQnVja2V0IEFjY2VzcyBDb250cm9sCiAg\
ICAgICAgZGVzY3JpcHRpb246ICdkZWZpbmUgaWYgdGhlIGJ1Y2tldCBjYW4gYmUgYWNjZXNzZWQg\
ZnJvbSBwdWJsaWMgb3IgcHJpdmF0ZSBsb2NhdGlvbnMnCiAgICAgICAgdHlwZTogZW51bQogICAg\
ICAgIGVudW06CiAgICAgICAgICAtIFByaXZhdGUKICAgICAgICAgIC0gUHVibGljUmVhZAogICAg\
ICAgICAgLSBQdWJsaWNSZWFkV3JpdGUKICAgICAgICAgIC0gQXV0aGVudGljYXRlZFJlYWQKICAg\
ICAgICAgIC0gTG9nRGVsaXZlcnlXcml0ZQogICAgICAgICAgLSBCdWNrZXRPd25lclJlYWQKICAg\
ICAgICAgIC0gQnVja2V0T3duZXJGdWxsQ29udHJvbAogICAgICAgICAgLSBBd3NFeGVjUmVhZAog\
ICAgICAgIGRlZmF1bHQ6ICJQcml2YXRlIgogICAgbWV0YWRhdGE6CiAgICAgIGRpc3BsYXlOYW1l\
OiAiQW1hem9uIFMzIgogICAgICBsb25nRGVzY3JpcHRpb246ICJBbWF6b24gU2ltcGxlIFN0b3Jh\
Z2UgU2VydmljZSAoQW1hem9uIFMzKSBpcyBzdG9yYWdlIGZvciB0aGUgSW50ZXJuZXQuIFlvdSBj\
YW4gdXNlIEFtYXpvbiBTMyB0byBzdG9yZSBhbmQgcmV0cmlldmUgYW55IGFtb3VudCBvZiBkYXRh\
IGF0IGFueSB0aW1lLCBmcm9tIGFueXdoZXJlIG9uIHRoZSB3ZWIuIFlvdSBjYW4gYWNjb21wbGlz\
aCB0aGVzZSB0YXNrcyB1c2luZyB0aGUgc2ltcGxlIGFuZCBpbnR1aXRpdmUgd2ViIGludGVyZmFj\
ZSBvZiB0aGUgQVdTIE1hbmFnZW1lbnQgQ29uc29sZSIKICAgICAgY29zdDogJDAuMDAK"


USER apb
