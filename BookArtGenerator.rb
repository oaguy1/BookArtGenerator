# Book Art Generator, forked from Maren Hachman on github
# https://github.com/Moini/BookArtGenerator
#     
#     Licence
#     ================
#     <Book Art Creator: Creates patterns from black and white  images for 
#     folding book pages to get book sculptures >
#     Copyright (C) 2014  David N. Robinson
# 
#     This program is free software: you can redistribute it and/or modify     
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
# 
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
# 
#     You should have received a copy of the GNU General Public License
#     along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#		You can reach the author at oaguy1 <at> gmail <dot> com

class BookArtGenerator
  
  def initializer
    @last_even_page = 0
    @front_matter = false
    @front_matter_size = 0
    @num_leaves
    @book_height = 0
    @image_path = " "
    @image = nil
  end

  def getLastEvenPage
    puts "What is the last even numbered page in the book?"
    @last_even_page = gets.remove_commas.to_i
  end

  def getFrontMatter 
    puts "Is there any front matter in the book, "\
      "e.g. a tables of contents or acknowledgemnts? (yes or no)"
    @front_matter = gets.to_boolean
  end 

  def getFrontMatterSize
    puts "How many pages of front matter are there in the book?"
    @front_matter_size = gets.remove_commas.to_i
    puts @front_matter_size
  end

  def getBookHeight
    puts "How tall is the book? Any unit of measurement is fine"
    @book_height = gets.remove_commas.to_i
  end

  def getImagePath
    puts "Please give the name of the image you wish to generate. " \
      "Please note: this image should be in the same folder as this " \
      "program. Also, please include the images file extension in the name: "\
      "e.g. \"pikachu.png\". The file name is case sensitive"
    until @image != nil
      @image_path = gets
      
    end
  end

  # Reopen String class and add utility method
  String.class_eval do
    def remove_commas
      self.delete ','
    end

    def to_boolean
      if self.downcase.include? 'y'
        true
      else
        false
      end
    end
  end
    
end

book = BookArtGenerator.new()
book.getImagePath
