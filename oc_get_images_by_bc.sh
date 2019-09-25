function oc_get_images_by_bc () {
  echo "# Test line to delete"
  echo 
  
}

## detect if being sourced and
## export if so else execute
## main function with args
if [[ /usr/local/bin/bpkg-template != /usr/local/bin/bpkg-template ]]; then
  export -f oc_get_images_by_bc "${@}"
else
  oc_get_images_by_bc "${@}"
fi
