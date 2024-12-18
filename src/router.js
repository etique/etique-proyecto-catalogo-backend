const express = require("express")
const yup = require("yup")

const { saludarConNombre, sumar } = require("./utils")


const connection = require("./db") // importar la conexión a la base de datos

const router = express.Router()

const schema = yup.object().shape({
  marca: yup.string().required("La marca es obligatoria"),
  referencia: yup.string().required("La referencia es obligatoria"),
  nombre: yup.string().required("Nombre es obligatorio"),

 // email: yup
 //   .string()
 //   .email("El email es inválido")
 //   .required("El email es obligatorio"),

})

router.get("/", function (request, response) {
  response.send("Hello World")
}) // obtener datos

router.get("/saludar", function (request, response) {
  const saludo = saludarConNombre("Hola Edgar")
  const suma = sumar(5, 3)
  response.send(saludo + " " + suma)
})

router.get("/usuario", function (request, response) {
  response.json({
    nombre: "Edgat",
    apellido: "Pike",
    edad: 40,
    email: "edagar.tique@gmail.com",
    telefono: "123456789",
  })
})

router.get("/productos", function (request, response) {
  let {page = 1, perPage = 9} = request.query
  page = parseInt(page)
  perPage = parseInt(perPage)

  connection.query(
    "SELECT * FROM productos ORDER BY id DESC LIMIT ?, ?",
    [(page - 1) * perPage, perPage],
    function (error, result) {
      if (error) {
        console.log("Error fetching productos", error)
      } else {
        response.json(result)
      }
    },
  )

})

router.post("/productos", async function (request, response) {
  

  const datos = request.body

  try {
    const result = await schema.validate(datos) // validamos que el objeto cumpla con el esquema

    const query =
      "INSERT INTO productos (marca, referencia, nombre, genero, precio, imagen) VALUES (?, ?, ?, ?, ?, ? )"

    connection.execute(query, Object.values(datos), function (error, result) {
      if (error) {
        response.status(400).json({
          message: " Error al guardar",
          error: error,
        })
      } else {
        response.json({
          message: "Producto guardado",
          data: result,
        })
    }
  })

  } catch (error) {
    response.status(400).json({
      message: error.message,
    })
  }
})
router.get("/productos/:id", function(request,response){
const {id} = request.params

const query = "SELECT * FROM productos WHERE id = ?"

  connection.query(query, [id], function(error, result){
    if (error) {
      response.status(400).json({
        message: "Error al obtener el producto",
        error: error
      })
    } else {
      if (result.length > 0) {
        response.json(result[0])
      } else {
        response.status(404).json({
          message: "Producto no encontrado"
        })
      }
    }
  })
})
router.put("/productos/:id", async function (request, response) {
  const data = request.body
  const { id } = request.params

  // const query = "UPDATE productos SET ? WHERE id = ?",

  try {
    await schema.validate(data)
    
    const query = "UPDATE productos SET marca = ?, referencia = ?, nombre = ?, genero = ?, precio = ? , imagen= ? WHERE id = ?"
  
    connection.execute(query, Object.values(data).concat(id), function(error, result){
      if (error) {
        response.status(400).json({
          message: "Error al actualizar el producto",
          error
        })
      } else {
        response.json({
          message: "Producto actualizado",
          data: result
        })
      }
    })
  } catch (error) {
    response.status(400).json({
      message: error.message,
    })
    
  }
  
})

router.delete("/productos/:id", function (request, response){
  const {id} = request.params

  const query = "DELETE FROM productos WHERE id = ?"

  connection.execute(query, [id], function(error, result){
    if (error) {
      response.status(400).json({
        message: "Error al eliminar el producto",
        error
      })
    } else {
      response.json({
        message: "Producto eliminado correctamente",
        data: result
      })
    }
  })
})

module.exports = router
