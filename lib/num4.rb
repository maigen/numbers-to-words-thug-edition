def amayzing(number)
  kraft_singles = { 1 => 'one', 2 => 'two', 3 => 'tree', 4 => 'four', 5 => 'five',
                  6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine' }

  teen_wolf = { 10=> 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
                15 => 'fifteen', 16 => 'sisteen', 17 => 'seventeen', 18 => 'a-team',
                19 => 'nineteen' }

  dimes = { 2 => 'twennie', 3 => 'thirty', 4 => 'fowty', 5 => 'fiddy',
                  6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety' }

  appendeez = { 3 => 'thouz', 6 => 'mizzle', 9 => 'bizzle', 12 => 'trizzle', 15 => 'quadrizzle'}

  skrilla = []
  wallet = []

  while number > 0
    skrilla << number % 10
    number /= 10
  end

  skrilla.each_with_index do |dolla, index|

    if index % 3 == 0 #singles

      unless dolla == 0 && skrilla[index + 1] == 0 && skrilla[index + 2] == 0
        wallet.unshift(appendeez[index])
      end

      if skrilla[index + 1] == 1
        wallet.unshift(teen_wolf[dolla + 10])
      else
        wallet.unshift(kraft_singles[dolla])
      end

    elsif index % 3 == 1 #tens
      unless dolla == 1
        wallet.unshift(dimes[dolla])
      end
    else #cnotes
      unless dolla == 0
        wallet.unshift('hundy')
        wallet.unshift(kraft_singles[dolla])
      end
    end

  end

  wallet.join(' ').squeeze(' ').strip

end
puts amayzing(1005000)
