node 'application.test1' {
class { 'grafana':
  cfg => {
    app_mode => 'production',
    server   => {
      http_port     => 8080,
    },
    database => {
      type          => 'sqlite3',
      host          => '172.16.218.170:3306',
      name          => 'grafana',
      user          => 'root',
      password      => '',
    },
    users    => {
      allow_sign_up => false,
    },
  },
}
}
