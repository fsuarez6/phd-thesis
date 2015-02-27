# make sure scons finds tex files:
import os

def get_files(directory):
  file_paths = []
  # Walk the tree.
  for root, directories, files in os.walk(directory):
    for filename in files:
      # Join the two strings in order to form the full filepath.
      filepath = os.path.join(root, filename)
      file_paths.append(filepath)  # Add it to the list.
  return file_paths

env = Environment(ENV=os.environ)
# Build all the figures in the tikz folder and send them to the figures folder
SConscript('tikz/SConscript', variant_dir='figures', duplicate=0)
# Build the paper
env.AppendUnique(PDFLATEXFLAGS='-synctex=1')
filename = 'thesis'
pdf = env.PDF(filename + '.tex')
# Force to build when any file in 'chapters', 'figures' or 'tikz' changes
dependencies = get_files('chapters') + ['UPMthesis.cls','references.bib'] + get_files('figures')
Depends(pdf, dependencies)
# make sure that the pdf is reloaded properly (e.g., in Skim)
env.Precious(pdf)
env.Clean(pdf, filename + '.synctex.gz')
env.Clean(pdf, filename + '.bbl')
env.Clean(pdf, filename + '.blg')
env.Clean(pdf, filename + '.bcf')
env.Clean(pdf, 'thesis1-blx.bbl')
env.Clean(pdf, 'thesis1-blx.aux')
env.Clean(pdf, 'thesis1-blx.blg')
env.Clean(pdf, 'SConstructc')
env.NoClean(pdf)
