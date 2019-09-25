#!/bin/bash
function oc_get_images_by_bc () {
  for i in $(oc get bc | grep -v NAME | grep -v JenkinsPipeline  | cut -d" " -f1);do
    image=$(oc get bc $i -o json | jq .spec.strategy.sourceStrategy.from.name)
    echo "$i: $image"
  done
  
}

## detect if being sourced and
## export if so else execute
## main function with args
if [[ /usr/local/bin/bpkg-template != /usr/local/bin/bpkg-template ]]; then
  export -f oc_get_images_by_bc "${@}"
else
  oc_get_images_by_bc "${@}"
fi
