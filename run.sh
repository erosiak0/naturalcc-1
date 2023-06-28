#python -m run.summarization.seq2seq.train -f config/csn/java/java > run/summarization/seq2seq/config/csn/java/java.log 2>&1
#python -m run.summarization.seq2seq.train -f config/csn/javascript/javascript > run/summarization/seq2seq/config/csn/javascript/javascript.log 2>&1
#python -m run.summarization.seq2seq.train -f config/csn/php/php > run/summarization/seq2seq/config/csn/php/php.log 2>&1
#python -m run.summarization.seq2seq.train -f config/csn/python/python > run/summarization/seq2seq/config/csn/python/python.log 2>&1
#python -m run.summarization.seq2seq.train -f config/csn/ruby/ruby > run/summarization/seq2seq/config/csn/ruby/ruby.log 2>&1


python -m run.summarization.seq2seq.eval -f config/csn/go/go -o run/summarization/seq2seq/config/csn/go/go.txt > run/summarization/seq2seq/config/csn/go/go_eval.log 2>&1

python -m run.summarization.seq2seq.eval -f config/csn/java/java -o run/summarization/seq2seq/config/csn/java/java.txt > run/summarization/seq2seq/config/csn/java/java_eval.log 2>&1

python -m run.summarization.seq2seq.eval -f config/csn/javascript/javascript -o run/summarization/seq2seq/config/csn/javascript/javascript.txt > run/summarization/seq2seq/config/csn/javascript/javascript_eval.log 2>&1

python -m run.summarization.seq2seq.eval -f config/csn/php/php -o run/summarization/seq2seq/config/csn/php/php.txt > run/summarization/seq2seq/config/csn/php/php_eval.log 2>&1

python -m run.summarization.seq2seq.eval -f config/csn/python/python -o run/summarization/seq2seq/config/csn/python/python.txt > run/summarization/seq2seq/config/csn/python/python_eval.log 2>&1

python -m run.summarization.seq2seq.eval -f config/csn/ruby/ruby -o run/summarization/seq2seq/config/csn/ruby/ruby.txt > run/summarization/seq2seq/config/csn/ruby/ruby_eval.log 2>&1
