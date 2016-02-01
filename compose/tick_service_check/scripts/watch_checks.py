
import subprocess
import json

COLORS = {
    'ok': '\033[92mOK: ',
    'info': '\033[94mINFO: ',
    'warn': '\033[93mWARN: ',
    'critical': '\033[91mCRITICAL: '
}

DEFAULT_COLOR = '\033[39m'

#tail_proc = subprocess.Popen(["docker", "exec", "-it", "tick-sc-kapacitor",
#    "tail", "-F", "/kapacitor-data/scriptlogs/basic_check.log"],
#    stdout=subprocess.PIPE,
#    shell=True,
#    universal_newlines=True)
tail_proc = subprocess.Popen("docker exec -it tick-sc-kapacitor tail -n 0 -F /kapacitor-data/scriptlogs/basic_check.log",
    stdout=subprocess.PIPE,
    shell=True,
    universal_newlines=True)

for ln in tail_proc.stdout:
    json_msg = json.loads(ln)
    colored_msg = COLORS.get(json_msg['level'].lower(), '\033[1mUNKNOWN: ') + DEFAULT_COLOR
    print(colored_msg + json_msg['message'])
