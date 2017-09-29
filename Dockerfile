FROM ansibleplaybookbundle/apb-base
MAINTAINER Ansible Playbook Bundle Community

RUN yum -y install python-boto3 && yum clean all

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZTogczMtYXBiCmltYWdlOiBhbnNpYmxlcGxheWJvb2tidW5kbGUvczMtYXBiCmRlc2NyaXB0\
aW9uOiAnUzMgQnVja2V0Jwp0YWdzOgogIC0gYW1hem9uCiAgLSBTMwpiaW5kYWJsZTogdHJ1ZQph\
c3luYzogb3B0aW9uYWwKbWV0YWRhdGE6CiAgZGlzcGxheU5hbWU6ICJBbWF6b24gUzMiCiAgbG9u\
Z0Rlc2NyaXB0aW9uOiAiQW1hem9uIFNpbXBsZSBTdG9yYWdlIFNlcnZpY2UgKEFtYXpvbiBTMykg\
aXMgc3RvcmFnZSBmb3IgdGhlIEludGVybmV0LiBZb3UgY2FuIHVzZSBBbWF6b24gUzMgdG8gc3Rv\
cmUgYW5kIHJldHJpZXZlIGFueSBhbW91bnQgb2YgZGF0YSBhdCBhbnkgdGltZSwgZnJvbSBhbnl3\
aGVyZSBvbiB0aGUgd2ViLiBZb3UgY2FuIGFjY29tcGxpc2ggdGhlc2UgdGFza3MgdXNpbmcgdGhl\
IHNpbXBsZSBhbmQgaW50dWl0aXZlIHdlYiBpbnRlcmZhY2Ugb2YgdGhlIEFXUyBNYW5hZ2VtZW50\
IENvbnNvbGUiCiAgaW1hZ2VVcmw6ICJodHRwczovL3MzLmFtYXpvbmF3cy5jb20vdGhwLWF3cy1p\
Y29ucy1kZXYvU3RvcmFnZV9BbWF6b25TM19MQVJHRS5wbmciCiAgZG9jdW1lbnRhdGlvblVybDog\
aHR0cHM6Ly9hd3MuYW1hem9uLmNvbS9kb2N1bWVudGF0aW9uL3MzLwpwbGFuczoKICAtIG5hbWU6\
IGRlZmF1bHQKICAgIGRlc2NyaXB0aW9uOiAnUzMgQnVja2V0JwogICAgZnJlZTogZmFsc2UKICAg\
IHBhcmFtZXRlcnM6CiAgICAgIC0gbmFtZTogc3RhY2tfaWRlbnRpZmllcgogICAgICAgIHJlcXVp\
cmVkOiB0cnVlCiAgICAgICAgdGl0bGU6IFVuaXF1ZSBTdGFjayBJZGVudGlmaWVyCiAgICAgICAg\
ZGVzY3JpcHRpb246ICdVbmlxdWUgaWRlbnRpZmllciB0byBiZSBpbmNsdWRlZCBpbiB0aGUgQ2xv\
dWRGb3JtYXRpb24gU3RhY2sgTmFtZSB0byBwcmV2ZW50IG5hbWluZyBjb2xsaXNpb25zLiBNdXN0\
IG9ubHkgY29udGFpbiBhbHBoYW51bWVyaWMgY2hhcmFjdGVycyBhbmQgaHlwaGVucy4gKGUuZy4g\
InNhbXBsZS1TMy1zdGFjayIsICJwcm9kdWN0aW9uLVMzLTA5LTIwMTciKScKICAgICAgICB0eXBl\
OiBzdHJpbmcKICAgICAgLSBuYW1lOiBhd3NfYWNjZXNzX2tleQogICAgICAgIHJlcXVpcmVkOiB0\
cnVlCiAgICAgICAgdGl0bGU6IEFXUyBBY2Nlc3MgS2V5CiAgICAgICAgZGVzY3JpcHRpb246ICdB\
V1MgQWNjZXNzIEtleSB0byBhdXRoZW50aWNhdGUgdG8gQVdTIHdpdGguJwogICAgICAgIHR5cGU6\
IHN0cmluZwogICAgICAtIG5hbWU6IGF3c19zZWNyZXRfa2V5CiAgICAgICAgcmVxdWlyZWQ6IHRy\
dWUKICAgICAgICB0aXRsZTogQVdTIFNlY3JldCBLZXkKICAgICAgICBkZXNjcmlwdGlvbjogJ0FX\
UyBTZWNyZXQgS2V5IHRvIGF1dGhlbnRpY2F0ZSB0byBBV1Mgd2l0aC4nCiAgICAgICAgdHlwZTog\
c3RyaW5nCiAgICAgIC0gbmFtZTogcmVnaW9uCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAg\
ICB0aXRsZTogQVdTIFJlZ2lvbgogICAgICAgIGRlc2NyaXB0aW9uOiAnQVdTIFJlZ2lvbiB0byBj\
cmVhdGUgdGhlIGJ1Y2tldCBpbi4nCiAgICAgICAgdHlwZTogZW51bQogICAgICAgIGVudW06CiAg\
ICAgICAgICAtIGFwLW5vcnRoZWFzdC0xCiAgICAgICAgICAtIGFwLW5vcnRoZWFzdC0yCiAgICAg\
ICAgICAtIGFwLXNvdXRoLTEKICAgICAgICAgIC0gYXAtc291dGhlYXN0LTEKICAgICAgICAgIC0g\
YXAtc291dGhlYXN0LTIKICAgICAgICAgIC0gY2EtY2VudHJhbC0xCiAgICAgICAgICAtIGV1LWNl\
bnRyYWwtMQogICAgICAgICAgLSBldS13ZXN0LTEKICAgICAgICAgIC0gZXUtd2VzdC0yCiAgICAg\
ICAgICAtIHNhLWVhc3QtMQogICAgICAgICAgLSB1cy1lYXN0LTEKICAgICAgICAgIC0gdXMtZWFz\
dC0yCiAgICAgICAgICAtIHVzLXdlc3QtMQogICAgICAgICAgLSB1cy13ZXN0LTIKICAgICAgICBk\
ZWZhdWx0OiAidXMtd2VzdC0yIgogICAgICAtIG5hbWU6IEFwcGxpY2F0aW9uTmFtZQogICAgICAg\
IHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdGl0bGU6IEFwcGxpY2F0aW9uIE5hbWUKICAgICAgICBk\
ZXNjcmlwdGlvbjogJ1RoaXMgd2lsbCBiZSBzZXQgYXMgdGhlIHZhbHVlIGZvciB0aGUgXCJBUFBM\
SUNBVElPTl9OQU1FXCIgdGFnIG9uIGFsbCBzdXBwb3J0ZWQgcmVzb3VyY2VzJwogICAgICAgIHR5\
cGU6IHN0cmluZwogICAgICAtIG5hbWU6IEJ1Y2tldE5hbWUKICAgICAgICByZXF1aXJlZDogdHJ1\
ZQogICAgICAgIHRpdGxlOiBCdWNrZXQgTmFtZQogICAgICAgIGRlc2NyaXB0aW9uOiAnTXVzdCBj\
b250YWluIG9ubHkgbG93ZXJjYXNlIGxldHRlcnMsIG51bWJlcnMsIHBlcmlvZHMgKC4pLCBhbmQg\
aHlwaGVucyAoLSksQ2Fubm90IGVuZCBpbiBudW1iZXJzJwogICAgICAgIHR5cGU6IHN0cmluZwog\
ICAgICAtIG5hbWU6IExvZ2dpbmdQcmVmaXgKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAg\
IHRpdGxlOiBMb2dnaW5nIFByZWZpeAogICAgICAgIGRlc2NyaXB0aW9uOiAnTXVzdCBjb250YWlu\
IG9ubHkgbG93ZXJjYXNlIGxldHRlcnMsIG51bWJlcnMsIHBlcmlvZHMgKC4pLCBhbmQgaHlwaGVu\
cyAoLSksQ2Fubm90IGVuZCBpbiBudW1iZXJzJwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAg\
IGRlZmF1bHQ6ICJMb2ciCiAgICAgIC0gbmFtZTogR2xhY2llckxpZmVDeWNsZVRyYW5zaXRpb25J\
bkRheXMKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHRpdGxlOiBHbGFjaWVyIExpZmUg\
Q3ljbGUgVHJhbml0aW9uIEluIERheXMKICAgICAgICBkZXNjcmlwdGlvbjogJ0RlZmluZSBob3cg\
bWFueSBkYXlzIG9iamVjdHMgc2hvdWxkIGV4aXN0IGJlZm9yZSBiZWluZyBtb3ZlZCB0byBHbGFj\
aWVyJwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6ICIxIgogICAgICAtIG5h\
bWU6IEVuYWJsZUdsYWNpZXJMaWZlQ3ljbGUKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAg\
IHRpdGxlOiBFbmFibGUgR2xhY2llciBMaWZlIEN5Y2xlCiAgICAgICAgZGVzY3JpcHRpb246ICdl\
bmFibGUgYXJjaGl2aW5nIHRvIEdsYWNpZXIgU3RvcmFnZSB0cnVlIG9yIGZhbHNlIGRlZmF1bHQg\
aXMgZmFsc2UnCiAgICAgICAgdHlwZTogYm9vbGVhbgogICAgICAgIGRlZmF1bHQ6IGZhbHNlCiAg\
ICAgIC0gbmFtZTogRW5hYmxlVmVyc2lvbmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAg\
ICAgdGl0bGU6IEVuYWJsZSBWZXJzaW9uaW5nCiAgICAgICAgZGVzY3JpcHRpb246ICdlbmFibGUg\
dmVyc2lvbmluZyBkZWZhdWx0IGlzIHRydWUnCiAgICAgICAgdHlwZTogYm9vbGVhbgogICAgICAg\
IGRlZmF1bHQ6IHRydWUKICAgICAgLSBuYW1lOiBMaWZlQ3ljbGVQcmVmaXgKICAgICAgICByZXF1\
aXJlZDogdHJ1ZQogICAgICAgIHRpdGxlOiBMaWZlIEN5Y2xlIFByZWZpeAogICAgICAgIGRlc2Ny\
aXB0aW9uOiAnTXVzdCBjb250YWluIG9ubHkgbG93ZXJjYXNlIGxldHRlcnMsIG51bWJlcnMsIHBl\
cmlvZHMgKC4pLCBhbmQgaHlwaGVucyAoLSksQ2Fubm90IGVuZCBpbiBudW1iZXJzJwogICAgICAg\
IHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6ICJBcmNoaXZlIgogICAgICAtIG5hbWU6IEJ1\
Y2tldEFjY2Vzc0NvbnRyb2wKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHRpdGxlOiBC\
dWNrZXQgQWNjZXNzIENvbnRyb2wKICAgICAgICBkZXNjcmlwdGlvbjogJ2RlZmluZSBpZiB0aGUg\
YnVja2V0IGNhbiBiZSBhY2Nlc3NlZCBmcm9tIHB1YmxpYyBvciBwcml2YXRlIGxvY2F0aW9ucycK\
ICAgICAgICB0eXBlOiBlbnVtCiAgICAgICAgZW51bToKICAgICAgICAgIC0gUHJpdmF0ZQogICAg\
ICAgICAgLSBQdWJsaWNSZWFkCiAgICAgICAgICAtIFB1YmxpY1JlYWRXcml0ZQogICAgICAgICAg\
LSBBdXRoZW50aWNhdGVkUmVhZAogICAgICAgICAgLSBMb2dEZWxpdmVyeVdyaXRlCiAgICAgICAg\
ICAtIEJ1Y2tldE93bmVyUmVhZAogICAgICAgICAgLSBCdWNrZXRPd25lckZ1bGxDb250cm9sCiAg\
ICAgICAgICAtIEF3c0V4ZWNSZWFkCiAgICAgICAgZGVmYXVsdDogIlByaXZhdGUiCiAgICBtZXRh\
ZGF0YToKICAgICAgZGlzcGxheU5hbWU6ICJBbWF6b24gUzMiCiAgICAgIGxvbmdEZXNjcmlwdGlv\
bjogIkFtYXpvbiBTaW1wbGUgU3RvcmFnZSBTZXJ2aWNlIChBbWF6b24gUzMpIGlzIHN0b3JhZ2Ug\
Zm9yIHRoZSBJbnRlcm5ldC4gWW91IGNhbiB1c2UgQW1hem9uIFMzIHRvIHN0b3JlIGFuZCByZXRy\
aWV2ZSBhbnkgYW1vdW50IG9mIGRhdGEgYXQgYW55IHRpbWUsIGZyb20gYW55d2hlcmUgb24gdGhl\
IHdlYi4gWW91IGNhbiBhY2NvbXBsaXNoIHRoZXNlIHRhc2tzIHVzaW5nIHRoZSBzaW1wbGUgYW5k\
IGludHVpdGl2ZSB3ZWIgaW50ZXJmYWNlIG9mIHRoZSBBV1MgTWFuYWdlbWVudCBDb25zb2xlIgog\
ICAgICBjb3N0OiAkMC4wMAo="


USER apb
