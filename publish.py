#------------------------------------------------------------------------------#

from pathlib  import Path
from datetime import datetime
from zoneinfo import ZoneInfo
import shutil as sh

#------------------------------------------------------------------------------#

title      = 'Materiais Didáticos para GAAL'
discipline = 'Geometria Analítica e Álgebra Linear'
book_name  = 'Geometria_Analitica.pdf'
add_book   = False

#------------------------------------------------------------------------------#

# Sources
root  = Path(__file__).parent
book  = root / '1-book' / book_name
pres  = root / '2-classes' / 'pdf' / '1-pres'
hand  = root / '2-classes' / 'pdf' / '2-hand'
exams = root / '3-exams'

# Destiny
page       = root / '_docs_md'
page_pres  = page / 'pres'
page_hand  = page / 'hand'
page_exams = page / 'exams'
index      = page / 'index.md'

tab = 4*' '

#------------------------------------------------------------------------------#
def folder_name(name: str) -> str:

    names = {
            'A-Introducao'    : 'A - Introdução',
            'B-Matrizes'      : 'B - Matrizes',
            'C-Sistemas'      : 'C - Sistemas Lineares',
            'D-Determinantes' : 'D - Determinantes',
            'E-Vetores'       : 'E - Vetores',
            }

    try:
        return names[name]

    except KeyError:
        return name.replace('_', ' ').replace('-', ' ')


#------------------------------------------------------------------------------#
def pdf_name(name: str) -> str:

    names = {
        'A-01-Apresentacao'        : 'A - 01 - Apresentação',
        'A-02-Metodo_Matematico'   : 'A - 02 - Método Matemático',
        'B-01-Equacoes'            : 'B - 01 - Equações',
        'B-02-Equacoes_lineares'   : 'B - 02 - Equações Lineares',
        'B-03-Matrizes'            : 'B - 03 - Matrizes',
        'B-04-Operacoes'           : 'B - 04 - Operações',
        'C-01-Sistemas_lineares'   : 'C - 01 - Sistemas Lineares',
        'C-02-Escalonamento'       : 'C - 02 - Escalonamento',
        'C-03-Classificacao'       : 'C - 03 - Classificação',
        'C-04-Gauss-Jordan'        : 'C - 04 - Método de Gauss-Jordan',
        'C-05-Sistemas_homogeneos' : 'C - 05 - Sistemas Homogêneos',
        'C-06-Posto'               : 'C - 06 - Posto',
        'C-07-Matrizes_inversas'   : 'C - 07 - Matrizes Inversas',
        'D-01-Determinantes'       : 'D - 01 - Determinantes',
        'D-02-Propriedades'        : 'D - 02 - Propriedades',
        'D-03-Sistemas'            : 'D - 03 - Sistemas',
        'E-01-Vetores'             : 'E - 01 - Vetores',
        'E-02-Produto_por_escalar' : 'E - 02 - Produto por Escalar',
        'E-03-Soma'                : 'E - 03 - Soma',
        'E-04-Norma'               : 'E - 04 - Norma',
        'E-05-Produto_escalar'     : 'E - 05 - Produto Escalar',
        'E-06-Angulo'              : 'E - 06 - Ângulo',
        'E-07-Projecao'            : 'E - 07 - Projeção',
        'E-08-Produto_vetorial'    : 'E - 08 - Produto Vetorial',
        'E-09-Area_paralelogramo'  : 'E - 09 - Area do Paralelogramo',
    }

    name = name.replace('pres_', '').replace('.pdf', '')

    try:
        return names[name]

    except KeyError:
        return name.replace('_', ' ').replace('-', ' - ')


#------------------------------------------------------------------------------#
def cp_pdf(src: str, dest: str) -> None:

    for pdf in src.glob("*/*.pdf"):
        dest_pdf = dest / pdf.relative_to(src)
        dest_pdf.parent.mkdir(parents=True, exist_ok=True)
        sh.copy2(pdf, dest_pdf)


#------------------------------------------------------------------------------#
def mk_page() -> None:

    print('Resetting page folders...')
    sh.rmtree(page, ignore_errors=True)
    page.mkdir()

    if add_book:
        print('Copying booklet...')
        sh.copy(book, page)

    print('Copying presentations...')
    cp_pdf(pres, page_pres)

    print('Copying handouts...')
    cp_pdf(hand, page_hand)

    print('Copying exams...')
    cp_pdf(exams, page_exams)


#------------------------------------------------------------------------------#
def write_pdf_link(f, file: Path, prefix: str = ''):
    name = pdf_name(file.name)
    f.write(f'{prefix}[[ PDF ]]({file}) {name}\n')


#------------------------------------------------------------------------------#
def mk_index() -> None:
    with index.open("w", encoding="utf-8") as f:

        # Header

        now = datetime.now(ZoneInfo("America/Sao_Paulo"))

        f.write(f"# {title}\n\n")
        f.write(now.strftime("Última atualização: %Y-%m-%d %H:%M:%S\n\n"))
        f.write(f"Materiais para a disciplina {discipline}\n\n")

        # Link to Book

        if add_book:
            f.write("\n??? Apostila\n")
            for file in sorted(page.glob("*.pdf")):
                write_pdf_link(f, file.relative_to(page), tab)

        # Links to presentations

        f.write('\n??? "Apresentações das aulas"\n')
        for folder in sorted(page_hand.glob("*")):
            name = folder_name(folder.name)
            f.write(f'\n{tab}??? abstract "{name}"\n')
            for file in sorted(folder.glob("*.pdf")):
                write_pdf_link(f, file.relative_to(page), f'{tab}{tab}- ')

        # Links to presentations - passo a passo

        f.write('\n??? "Apresentações das aulas - passo a passo"\n')
        for folder in sorted(page_pres.glob("*")):
            name = folder_name(folder.name)
            f.write(f'\n{tab}??? abstract "{name}"\n')
            for file in sorted(folder.glob("*.pdf")):
                write_pdf_link(f, file.relative_to(page), f'{tab}{tab}- ')

        # Links to previous tests

        f.write('\n??? "Avaliações anteriores"\n')
        for folder in sorted(page_exams.glob("*")):
            name = folder_name(folder.name)
            f.write(f'\n{tab}??? abstract "{name}"\n')
            for file in sorted(folder.glob("*.pdf")):
                write_pdf_link(f, file.relative_to(page), f'{tab}{tab}- ')


#------------------------------------------------------------------------------#
if __name__ == '__main__':

    mk_page ()
    mk_index()

#------------------------------------------------------------------------------#
