import Building from './5-building.js';

const b = new Building(100);
console.log(b); // Should log: Building { _sqft: 100 }

class TestBuilding extends Building {
    evacuationWarningMessage() {
        return "This is a test building evacuation warning.";
    }
}
try {
    new TestBuilding(200); // This should work now
} catch (err) {
    console.log(err);
}
