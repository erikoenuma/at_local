worker_processes  2
working_directory "/var/www/at_local/current"
# エラーログの出力先
stderr_path "log/unicorn.stderr.log"
# 標準出力の出力先
stdout_path "log/unicorn.stdout.log"
timeout 30
# リクエストを受け取るアドレスやポート、UNIXドメインソケット
listen "/var/www/at_local/current/tmp/sockets/unicorn.sock"
# unicornのプロセスの出力先
pid '/var/www/at_local/current/tmp/pids/unicorn.pid'
# trueにすることで、ワーカープロセス分岐前にダウンタイムなくUnicornの再起動が行われる
preload_app true

before_fork do |server, worker|
defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!
old_pid = "#{server.config[:pid]}.oldbin"
if old_pid != server.pid
    begin
    sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
    Process.kill(sig, File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
end
end

after_fork do |server, worker|    # 9
defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end