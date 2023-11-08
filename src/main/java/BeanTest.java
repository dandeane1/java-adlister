import java.util.ArrayList;
import java.util.List;


public class BeanTest {
    public static void main(String[] args) {
        // Instantiate Album
        Album album1 = new Album();
        album1.setId(1);
        album1.setTitle("Album 1");
        album1.setArtist("Artist 1");
        // Set other properties of album1

        // Instantiate Author
        Author author1 = new Author();
        author1.setId(1);
        author1.setName("Author 1");
        // Set other properties of author1

        // Instantiate Quote
        Quote quote1 = new Quote();
        quote1.setId(1);
        quote1.setContent("Quote 1");
        quote1.setAuthor(author1);
        // Set other properties of quote1

        // Store multiple quotes in ArrayList
        List<Quote> quotes = new ArrayList<>();
        quotes.add(quote1);
        // Add other quotes to the list

        // Iterate over quotes and print content and author name
        for (Quote quote : quotes) {
            System.out.println("Content: " + quote.getContent());
            System.out.println("Author: " + quote.getAuthor().getName());
            System.out.println("-----");
        }
    }
}