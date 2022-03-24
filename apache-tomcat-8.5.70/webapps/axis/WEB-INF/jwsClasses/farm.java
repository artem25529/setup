import java.util.HashMap;
import java.util.Map;

public class farm {

    private final Map<String, String> foodByAnimalRepo;
    private final Map<String, String> animalByFoodRepo;

    public farm() {
        foodByAnimalRepo = new HashMap<>();
        foodByAnimalRepo.put("Cow", "Wheat");
        foodByAnimalRepo.put("Chicken", "Seeds");
        foodByAnimalRepo.put("Cat", "Milk");
        foodByAnimalRepo.put("Dog", "Bone");

        animalByFoodRepo = new HashMap<>();
        animalByFoodRepo.put("Wheat", "Cow");
        animalByFoodRepo.put("Seeds", "Chicken");
        animalByFoodRepo.put("Milk", "Cat");
        animalByFoodRepo.put("Bone", "Dog");
    }

    public String findAnimalsByFood(String food) {
        return animalByFoodRepo.getOrDefault(food, "no such animal");
    }

    public String findFoodByAnimal(String animal) {
        return foodByAnimalRepo.getOrDefault(animal, "no such food");
    }
}
