package ex.wysiwygdemo;

import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Slf4j
@Controller
@RequiredArgsConstructor
public class HomeController {

    private final PostRepository postRepository;

    @GetMapping("")
    public String home(Model model) {
        List<Post> posts = postRepository.findAll();
        model.addAttribute("posts", posts);
        return "home";
    }

    @GetMapping("/posts/{id}")
    public String posts(@PathVariable Long id, Model model) {
        Post post = postRepository.findById(id).orElseThrow();
        model.addAttribute("post", post);
        return "posts";
    }

    @GetMapping("/posts/new")
    public String newPost() {
        return "newPost";
    }

    @PostMapping("/posts/new")
    public String newPost(Post post) {
        postRepository.save(post);
        return "redirect:/";
    }
}
