#
class nova::compute::avanceserver(
  $avanceapi_connection_url,
  $avanceapi_connection_username,
  $avanceapi_connection_password,
  $avanceapi_inject_image=false
) {

  nova_config {
    #'DEFAULT/compute_driver':             value => 'avance.AvanceAPIDriver'; 
    'DEFAULT/compute_driver':             value => 'fake.FakeDriver';
    #'DEFAULT/connection_type':            value => 'avanceapi';
    'DEFAULT/avanceapi_connection_url':      value => $avanceapi_connection_url;
    'DEFAULT/avanceapi_connection_username': value => $avanceapi_connection_username;
    'DEFAULT/avanceapi_connection_password': value => $avanceapi_connection_password;
    'DEFAULT/avanceapi_inject_image':        value => $avanceapi_inject_image;
  }

##Add extra packages here

}
