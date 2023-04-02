using Q3.DataAccess;

namespace Q3.Models
{
    public class StudentDAO
    {
        public List<Student> GetStudents()
        {
            List<Student> students = new List<Student>();
            try
            {
                var context = new PE_PRN211_23SprB1Context();
                students = context.Students.ToList();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
            return students;
        }

        public List<Student> Filter(string gender)
        {
            List<Student> students = new List<Student>();
            try
            {
                var context = new PE_PRN211_23SprB1Context();
                students = context.Students.Where(p => p.Sex == gender).ToList();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
            return students;
        }
    }
}
