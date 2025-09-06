# Kolory
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Funkcje pomocnicze
log_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
log_warn() { echo -e "${YELLOW}[WARN]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1" >&2; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }

show_help() {
    echo "Użycie: $0 [opcje]"
    echo "Opcje:"
    echo "  -h, --help     Pokazuje tę pomoc"
    echo "  -v, --verbose  Tryb szczegółowy"
    echo "  -V, --version  Pokazuje wersję"
}

check_dependencies() {
    for cmd in "$@"; do
        if ! command -v "$cmd" &> /dev/null; then
            log_error "Brak wymaganego narzędzia: $cmd"
            exit 1
        fi
    done
}
