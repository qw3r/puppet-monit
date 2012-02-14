define monit::service() {
	file { "/etc/monit/conf.d/${name}":
		owner   => root,
		group   => root,
		mode    => 0644,
		source  => "puppet:///modules/monit/etc/monit/conf.d/${name}",
		notify  => Service["monit"],
		require => Package["monit"],
	}
}
