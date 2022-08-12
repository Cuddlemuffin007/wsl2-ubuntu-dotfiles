# Get the weather :) <<2
#--------------------------------------------------------------------
# Usage: weather tokyo
# -------------------------------------------------------------------
weather() {
    city=`curl -s https://ipinfo.io/city 2> /dev/null`
    if [[ $1 == "-h" || $1 == "--help" ]]; then
        echo "Displays the weather for your current city. You can also specify a city name or IATA airport abbreviation as the first argument."
        echo "Ex:"
        echo "weather"
        echo "weather Tokyo"
        echo "weather lax"
    elif ping -q -c 1 -W 1 ipinfo.io &>/dev/null; then
        curl http://wttr.in/${1:-$city} || echo "An error occurred. Did you enter a valid city?"
    fi
}
# >>2

# display searched process name if process is running
#--------------------------------------------------------------------
# Usage: any postgres
# -------------------------------------------------------------------
any() {
    if [[ $# == 0 ]]; then
        echo "usage: any name"
    fi
    ps aux | grep -v "grep" | grep $1 || echo "No running processes."
}
# >>2
